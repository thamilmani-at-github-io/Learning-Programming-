package com.example.calculator;

import android.support.v7.app.ActionBarActivity;
import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;


public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        Button btn = (Button)findViewById(R.id.button1);
        Button btn2 = (Button)findViewById(R.id.button2);
        Button btn3 = (Button)findViewById(R.id.button3);
        final EditText et1 = (EditText)findViewById(R.id.editText1);
        final EditText et2 = (EditText)findViewById(R.id.editText2);
        final TextView t1 = (TextView)findViewById(R.id.textView1);
        
        btn.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				int a = Integer.parseInt(et1.getText().toString());
				int b = Integer.parseInt(et2.getText().toString());	
				int c = a+b;
				t1.setText("Result of "+a+" + "+b+" is "+c);
			}
		});
        
        btn2.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				int a = Integer.parseInt(et1.getText().toString());
				int b = Integer.parseInt(et2.getText().toString());	
				int c = a-b;
				t1.setText("Result of "+a+" - "+b+" is "+c);
			}
		});
        
        btn3.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				int a = Integer.parseInt(et1.getText().toString());
				int b = Integer.parseInt(et2.getText().toString());	
				int c = a*b;
				t1.setText("Result of "+a+" * "+b+" is "+c);
			}
		});
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
;